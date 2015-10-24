.class Lw;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lv;


# direct methods
.method constructor <init>(Lv;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lw;->a:Lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lw;->a:Lv;

    invoke-virtual {v0}, Lv;->e()Z

    .line 441
    return-void
.end method
