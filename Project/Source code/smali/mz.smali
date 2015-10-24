.class Lmz;
.super Ljava/lang/Object;
.source "SplashHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmy;


# direct methods
.method constructor <init>(Lmy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lmz;->a:Lmy;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lmz;->a:Lmy;

    invoke-static {v0}, Lmy;->b(Lmy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmu;->a(Landroid/content/Context;)V

    .line 372
    iget-object v0, p0, Lmz;->a:Lmy;

    invoke-virtual {v0}, Lmy;->d()V

    .line 373
    return-void
.end method
