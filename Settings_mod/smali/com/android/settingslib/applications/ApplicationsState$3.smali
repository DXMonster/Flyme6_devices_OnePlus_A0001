.class final Lcom/android/lineageoslib/applications/ApplicationsState$3;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageoslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lineageoslib/applications/ApplicationsState$3;->sCollator:Ljava/text/Collator;

    .line 1203
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;)I
    .locals 4
    .param p1, "object1"    # Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;
    .param p2, "object2"    # Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1207
    iget-wide v0, p1, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->internalSize:J

    iget-wide v2, p2, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->internalSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1208
    :cond_0
    iget-wide v0, p1, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->internalSize:J

    iget-wide v2, p2, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->internalSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/android/lineageoslib/applications/ApplicationsState$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 1206
    check-cast p1, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/lineageoslib/applications/ApplicationsState$3;->compare(Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method