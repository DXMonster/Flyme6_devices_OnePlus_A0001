.class Lcom/android/lineageos/DateTimeSettingsSetupWizard$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/DateTimeSettingsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/lineageos/DateTimeSettingsSetupWizard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/DateTimeSettingsSetupWizard;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/lineageos/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/lineageos/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/lineageos/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/lineageos/DateTimeSettingsSetupWizard;

    invoke-static {v0}, Lcom/android/lineageos/DateTimeSettingsSetupWizard;->-wrap0(Lcom/android/lineageos/DateTimeSettingsSetupWizard;)V

    .line 322
    return-void
.end method