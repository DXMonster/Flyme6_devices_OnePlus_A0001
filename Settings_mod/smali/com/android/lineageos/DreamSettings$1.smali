.class Lcom/android/lineageos/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/lineageos/DreamSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/DreamSettings;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/lineageos/DreamSettings$1;->this$0:Lcom/android/lineageos/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/lineageos/DreamSettings$1;->this$0:Lcom/android/lineageos/DreamSettings;

    invoke-static {v0}, Lcom/android/lineageos/DreamSettings;->-get0(Lcom/android/lineageos/DreamSettings;)Lcom/android/lineageos/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lineageos/DreamBackend;->startDreaming()V

    .line 150
    return-void
.end method
