.class Lnu;
.super Ljava/lang/Object;
.source "CmsDataPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lod;

.field final synthetic b:Lnt;


# direct methods
.method constructor <init>(Lnt;Lod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lnu;->b:Lnt;

    iput-object p2, p0, Lnu;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lnu;->b:Lnt;

    iget-object v0, v0, Lnt;->b:Landroid/content/Context;

    iget-object v1, p0, Lnu;->a:Lod;

    iget-object v1, v1, Lod;->a:Ljava/lang/String;

    const-string v2, "st"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lnu;->b:Lnt;

    iget-object v1, p0, Lnu;->a:Lod;

    invoke-static {v0, v1}, Lnt;->a(Lnt;Lod;)V

    .line 116
    return-void
.end method
