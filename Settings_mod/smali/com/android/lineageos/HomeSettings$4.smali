.class Lcom/android/lineageos/HomeSettings$4;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/HomeSettings;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/lineageos/HomeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/HomeSettings;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/lineageos/HomeSettings$4;->this$0:Lcom/android/lineageos/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/lineageos/HomeSettings$4;->this$0:Lcom/android/lineageos/HomeSettings;

    invoke-static {v0}, Lcom/android/lineageos/HomeSettings;->-get0(Lcom/android/lineageos/HomeSettings;)Lcom/android/lineageos/HomeSettings$HomeAppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lineageos/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 225
    return-void
.end method
