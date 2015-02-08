# Create Plots
p1 <- ggplot(dmax, aes(x=factor(supp), y=len)) + 
        geom_bar(stat="identity", aes(fill=factor(dose)), position = "dodge") +
        scale_fill_brewer(name="Dose", palette = "Set1") +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        guides(fill = guide_legend(reverse = TRUE)) +
        labs(x="Supplement", y="Length",
             title = "Maximum Tooth Growth") +
        ylim(0,35)

p2 <- ggplot(dmin, aes(x=factor(supp), y=len)) + 
        geom_bar(stat="identity", aes(fill=factor(dose)), position = "dodge") +
        scale_fill_brewer(name="Dose", palette = "Set1") +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        guides(fill = guide_legend(reverse = TRUE)) +
        labs(x="Supplement", y="Length",
             title = "Minimum Tooth Growth") +
        ylim(0,35)

p3 <- ggplot(dmean, aes(x=factor(supp), y=len)) + 
        geom_bar(stat="identity", aes(fill=factor(dose)), position = "dodge") +
        scale_fill_brewer(name="Dose", palette = "Set2") +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        guides(fill = guide_legend(reverse = TRUE)) +
        labs(x="Supplement", y="Average Length Grown",
             title = "Mean Tooth Growth") +
        ylim(0,35)

# Define layout for plots and print
pushViewport(viewport(layout = grid.layout(5, 2)))
print(p1, vp = viewport(layout.pos.row = 1:2, layout.pos.col = 1))
print(p2, vp = viewport(layout.pos.row = 1:2, layout.pos.col = 2))
print(p3, vp = viewport(layout.pos.row = 3:5, layout.pos.col = 1:2))