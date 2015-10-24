.class Lyd;
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
    .line 173
    iput-object p1, p0, Lyd;->a:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lyd;->a:Lya;

    invoke-virtual {v0, v1, v1}, Lya;->smoothScrollTo(II)V

    .line 176
    return-void
.end method
