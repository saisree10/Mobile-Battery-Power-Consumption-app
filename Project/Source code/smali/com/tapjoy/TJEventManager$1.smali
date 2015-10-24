.class final Lcom/tapjoy/TJEventManager$1;
.super Ljava/util/LinkedHashMap;
.source "TJEventManager.java"


# static fields
.field private static final serialVersionUID:J = 0x506aca8d43dcbea9L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/tapjoy/TJEventManager$1;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
