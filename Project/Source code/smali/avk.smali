.class public Lavk;
.super Ljava/lang/Object;
.source "HistoryChartView.java"

# interfaces
.implements Lbeg;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/HistoryChartView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/HistoryChartView;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 121
    :pswitch_0
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 122
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lavk;->a:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
