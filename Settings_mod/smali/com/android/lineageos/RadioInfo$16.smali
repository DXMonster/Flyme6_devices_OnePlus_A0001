.class Lcom/android/lineageos/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lineageos/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/RadioInfo;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/lineageos/RadioInfo$16;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/lineageos/RadioInfo$16;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v0}, Lcom/android/lineageos/RadioInfo;->-wrap27(Lcom/android/lineageos/RadioInfo;)V

    .line 1112
    return-void
.end method
