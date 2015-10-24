.class Lye;
.super Ljava/lang/Object;
.source "HorizontalSlideItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lya;


# direct methods
.method constructor <init>(Lya;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lye;->a:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lye;->a:Lya;

    iget-object v1, p0, Lye;->a:Lya;

    invoke-static {v1}, Lya;->h(Lya;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lya;->smoothScrollTo(II)V

    .line 186
    return-void
.end method
