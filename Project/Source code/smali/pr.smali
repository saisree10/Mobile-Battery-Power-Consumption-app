.class Lpr;
.super Ljava/lang/Object;
.source "LoadingTctbDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpq;


# direct methods
.method constructor <init>(Lpq;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lpr;->a:Lpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lpr;->a:Lpq;

    iget-object v0, v0, Lpq;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 42
    iget-object v0, p0, Lpr;->a:Lpq;

    iget-object v0, v0, Lpq;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 43
    return-void
.end method
