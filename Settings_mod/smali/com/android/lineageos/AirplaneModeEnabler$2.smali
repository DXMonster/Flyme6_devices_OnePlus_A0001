.class Lcom/android/lineageos/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/lineageos/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/AirplaneModeEnabler;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/lineageos/AirplaneModeEnabler$2;->this$0:Lcom/android/lineageos/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lineageos/AirplaneModeEnabler$2;->this$0:Lcom/android/lineageos/AirplaneModeEnabler;

    invoke-static {v0}, Lcom/android/lineageos/AirplaneModeEnabler;->-wrap0(Lcom/android/lineageos/AirplaneModeEnabler;)V

    .line 58
    return-void
.end method
