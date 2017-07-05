.class Lcom/android/lineageos/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/lineageoslib/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lineageos/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/DataUsageSummary;

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1688
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lineageoslib/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    new-instance v0, Lcom/android/lineageoslib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/lineageos/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v2}, Lcom/android/lineageos/DataUsageSummary;->-get17(Lcom/android/lineageos/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/lineageoslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/lineageoslib/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/lineageoslib/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lineageoslib/net/ChartData;",
            ">;",
            "Lcom/android/lineageoslib/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/lineageoslib/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0, p2}, Lcom/android/lineageos/DataUsageSummary;->-set0(Lcom/android/lineageos/DataUsageSummary;Lcom/android/lineageoslib/net/ChartData;)Lcom/android/lineageoslib/net/ChartData;

    .line 1697
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get5(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageos/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v1}, Lcom/android/lineageos/DataUsageSummary;->-get6(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageoslib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/lineageoslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/lineageos/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1698
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get5(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageos/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v1}, Lcom/android/lineageos/DataUsageSummary;->-get6(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageoslib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/lineageoslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/lineageos/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1701
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/lineageos/DataUsageSummary;->-wrap13(Lcom/android/lineageos/DataUsageSummary;Z)V

    .line 1702
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-wrap10(Lcom/android/lineageos/DataUsageSummary;)V

    .line 1705
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get6(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageoslib/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lineageoslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get12(Lcom/android/lineageos/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1695
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1695
    check-cast p2, Lcom/android/lineageoslib/net/ChartData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/lineageos/DataUsageSummary$10;->onLoadFinished(Landroid/content/Loader;Lcom/android/lineageoslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lineageoslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/lineageoslib/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1712
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/lineageos/DataUsageSummary;->-set0(Lcom/android/lineageos/DataUsageSummary;Lcom/android/lineageoslib/net/ChartData;)Lcom/android/lineageoslib/net/ChartData;

    .line 1713
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get5(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageos/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/lineageos/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1714
    iget-object v0, p0, Lcom/android/lineageos/DataUsageSummary$10;->this$0:Lcom/android/lineageos/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/DataUsageSummary;->-get5(Lcom/android/lineageos/DataUsageSummary;)Lcom/android/lineageos/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/lineageos/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1711
    return-void
.end method
