.class Laws;
.super Ljava/lang/Object;
.source "SleepModeTopTipsGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawr;


# direct methods
.method constructor <init>(Lawr;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Laws;->a:Lawr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laws;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Laws;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawt;

    move-result-object v0

    invoke-interface {v0}, Lawt;->a()V

    .line 55
    :cond_0
    return-void
.end method
