.class Lcom/android/lineageos/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/fuelgauge/PowerUsageSummary;


# direct methods
.method public constructor <init>(Lcom/android/lineageos/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/fuelgauge/PowerUsageSummary;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/lineageos/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/android/lineageos/fuelgauge/PowerUsageSummary;

    .line 122
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/lineageos/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/android/lineageos/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/lineageos/fuelgauge/PowerUsageSummary;->-wrap1(Lcom/android/lineageos/fuelgauge/PowerUsageSummary;)V

    .line 126
    return-void
.end method
