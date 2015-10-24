.class final Ltr;
.super Ljava/lang/Object;
.source "EventStorage.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltr;->a:Landroid/content/Context;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltr;->b:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lth;
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Ltr;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Ltr;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth;

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lth;

    iget-object v1, p0, Ltr;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lth;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Ltr;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
