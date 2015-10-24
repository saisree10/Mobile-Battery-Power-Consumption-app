.class public Lut;
.super Ljava/lang/Object;
.source "DBCacheManager.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lut;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Luu;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Luu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lvb;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Luu;->b(Landroid/content/Context;Lvb;)V

    .line 56
    return-void
.end method
