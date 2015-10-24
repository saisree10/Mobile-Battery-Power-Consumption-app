.class Laww;
.super Ljava/lang/Object;
.source "SleepModeTopTipsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lawu;


# direct methods
.method constructor <init>(Lawu;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Laww;->a:Lawu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Laww;->a:Lawu;

    invoke-static {v0, p1, p2}, Lawu;->a(Lawu;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
