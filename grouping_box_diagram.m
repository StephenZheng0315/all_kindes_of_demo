%% clear data
clc;
clear;
close all;
%% edge color
data1=randn(1000,12);
data2=randn(1000,12)+1;
color1=[46, 114, 188]/255;
color2=[206, 85, 30]/255;
position_1 = [0.8:1:11.8];  % define position for first boxplots
position_2 = [1.2:1:12.2];  % define position for second boxplots 
box_1 = boxplot(data1,'positions',position_1,'colors',color1,'width',0.2,'notch','on','symbol','+','outliersize',5);
hold on;
box_2 = boxplot(data2,'positions',position_2,'colors',color2,'width',0.2,'notch','on','symbol','+','outliersize',5);
set(gca,'XTick', [1 2 3 4 5 6 7 8 9 10 11 12],'Xlim',[0 13],'Ylim',[-5 7]);
leg = findobj(gca,'Tag','Box'); % add legend
legend([leg(1),leg(13)], ["Feature1", "Feature2"] );
%% save figure
savefig(gcf,'boxplot_position_edgecolor.fig');
print(gcf, '-dpdf', 'boxplot_position_edgecolor.pdf')  % 保存为pdf文件