.class Lyz;
.super Ljava/lang/Object;
.source "MessageBoxRecommend.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzd;

.field final synthetic b:Lyy;


# direct methods
.method constructor <init>(Lyy;Lzd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lyz;->b:Lyy;

    iput-object p2, p0, Lyz;->a:Lzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lzf;->b:Landroid/content/Context;

    iget-object v1, p0, Lyz;->a:Lzd;

    iget-object v1, v1, Lzd;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lyi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 211
    return-void
.end method
