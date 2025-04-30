% dynare test_2.mod
% load('test_2_results.mat', 'oo_')
% irf1 =oo_.irfs;
% save irf1
% 
% dynare base_phi_3.mod
% load('base_phi_3_results.mat', 'oo_')
% irf2 =oo_.irfs;
% save irf2
% load('test_2_results.mat','irf1');
% load('base_phi_3_results.mat','irf2');
% 
% ending_cell={'ESP_G'};
% 
% for ii=1:length(ending_cell)
% HOR=1:1:40;
% var={'y','c'};
% figure
% for jj=1:length(var)
% subplot(1,2,jj) 
% eval('irf1.' var{1,jj},ending_cell{1,ii}]);
% eval('irf2.' var{1,jj},ending_cell{1,ii}]);
% hold on
% plot(HOR,[eval(['irf1.' var{1,jj},ending_cell{1,ii}])],'LineWidth',1,'-k',HOR,[eval(['irf2.' var{1,jj},ending_cell{1,ii}])],'LineWidth',1,'--r')
% title([var{1,jj}] )
% end
% end

base_dir = '/Users/khangphamgia/DynareWork/DSGE/matlab-dsge';
test_2_dir = fullfile(base_dir, 'test_2');
base_phi_3_dir = fullfile(base_dir, 'base_phi_3');

% Run Dynare models
dynare test_2.mod
load(fullfile(test_2_dir, 'Output', 'test_2_results.mat'), 'oo_')
irf1 = oo_.irfs;
save('irf1.mat', 'irf1')

dynare base_phi_3.mod
load(fullfile(base_phi_3_dir, 'Output', 'base_phi_3_results.mat'), 'oo_')
irf2 = oo_.irfs;
save('irf2.mat', 'irf2')

% Load IRFs
load('irf1.mat', 'irf1')
load('irf2.mat', 'irf2')

% Plotting
ending_cell = {'EPS_G'};

for ii = 1:length(ending_cell)
    HOR = 1:options_.irf;
    var = {'C', 'I', 'a', 'w', 'r', 'r_f', 'C_G', 'C_NG', 'Y_G', 'Y_NG', 
           'K_G', 'K_NG', 'P', 'P_G', 'P_NG', 'pi_G', 'pi_NG', 'D', 'A_G'};
    % Calculate subplot grid
    n_vars = length(var);          % 19 variables
    n_rows = ceil(sqrt(n_vars));   % e.g., 5 rows
    n_cols = ceil(n_vars / n_rows);% e.g., 4 columns
    figure
    for jj = 1:n_vars
        % Form field name with underscore
        field_name = [var{jj} '_' ending_cell{ii}]; % e.g., 'C_EPS_G'
        % Access structure fields dynamically
        irf1_val = irf1.(field_name);
        irf2_val = irf2.(field_name);
        % Use appropriate subplot grid
        subplot(n_rows, n_cols, jj)
        hold on
        plot(HOR, irf1_val, '-k', HOR, irf2_val, '--r', 'LineWidth', 2);
        title(var{jj})
    end
end