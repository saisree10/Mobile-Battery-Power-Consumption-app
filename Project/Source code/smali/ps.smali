.class Lps;
.super Ljava/lang/Object;
.source "LoadingTctbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpq;


# direct methods
.method constructor <init>(Lpq;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lps;->a:Lpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lps;->a:Lpq;

    invoke-virtual {v0}, Lpq;->cancel()V

    .line 72
    return-void
.end method
