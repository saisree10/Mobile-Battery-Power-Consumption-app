.class public Lako;
.super Landroid/os/Handler;
.source "GHandler.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lakx;

.field private c:Laku;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lako;->a:Landroid/content/Context;

    .line 19
    invoke-static {p1}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lako;->b:Lakx;

    .line 20
    new-instance v0, Laku;

    invoke-direct {v0}, Laku;-><init>()V

    iput-object v0, p0, Lako;->c:Laku;

    .line 21
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lako;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lako;->c:Laku;

    iget-object v0, p0, Lako;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Laku;->a(Landroid/app/Activity;I)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lako;->c:Laku;

    invoke-virtual {v0}, Laku;->a()V

    .line 47
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {p0}, Lako;->a()V

    .line 28
    iget-object v0, p0, Lako;->b:Lakx;

    invoke-virtual {v0}, Lakx;->a()V

    goto :goto_0

    .line 31
    :pswitch_1
    invoke-virtual {p0}, Lako;->a()V

    .line 32
    iget-object v0, p0, Lako;->b:Lakx;

    invoke-virtual {v0}, Lakx;->a()V

    goto :goto_0

    .line 35
    :pswitch_2
    invoke-virtual {p0}, Lako;->a()V

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lako;->a(I)V

    goto :goto_0

    .line 39
    :pswitch_3
    invoke-virtual {p0}, Lako;->a()V

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lako;->a(I)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
