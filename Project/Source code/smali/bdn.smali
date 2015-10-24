.class Lbdn;
.super Ljava/lang/Object;
.source "GraphicalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbdm;


# direct methods
.method constructor <init>(Lbdm;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lbdn;->a:Lbdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lbdn;->a:Lbdm;

    invoke-virtual {v0}, Lbdm;->invalidate()V

    .line 303
    return-void
.end method
