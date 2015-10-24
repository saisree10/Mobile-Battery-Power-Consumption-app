.class public Lafw;
.super Landroid/os/Handler;
.source "CalendarView.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lafw;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lafw;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->requestLayout()V

    .line 129
    :cond_0
    return-void
.end method
