.class Lpp;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lpp;->a:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lpp;->a:Lpo;

    iget-object v0, v0, Lpo;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 25
    iget-object v0, p0, Lpp;->a:Lpo;

    iget-object v0, v0, Lpo;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 26
    return-void
.end method
