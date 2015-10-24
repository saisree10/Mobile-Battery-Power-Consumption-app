.class public Lasx;
.super Landroid/telephony/PhoneStateListener;
.source "TeleStatusListener.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static e:Lasx;


# instance fields
.field public b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "TeleStatusListener"

    sput-object v0, Lasx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 36
    iput-object p1, p0, Lasx;->c:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lasx;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lasx;->d:Landroid/telephony/TelephonyManager;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lasx;
    .locals 2
    .parameter

    .prologue
    .line 20
    sget-object v0, Lasx;->e:Lasx;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lasx;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lasx;->e:Lasx;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lasx;

    invoke-direct {v0, p0}, Lasx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lasx;->e:Lasx;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lasx;->e:Lasx;

    invoke-virtual {v0}, Lasx;->a()V

    .line 28
    sget-object v0, Lasx;->e:Lasx;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lasx;->d:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 33
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 45
    sget-object v1, Lasx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTeleStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lasx;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lasx;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lasx;->b:I

    .line 47
    iget v1, p0, Lasx;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lasx;->b:I

    if-ne v1, v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 70
    :pswitch_0
    sget-object v0, Lasx;->a:Ljava/lang/String;

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lasx;->b:I

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v1, "com.dianxinos.dxbs.HANGUPPHONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lasx;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lasx;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lasx;->b:I

    goto :goto_0

    .line 81
    :pswitch_1
    sget-object v0, Lasx;->a:Ljava/lang/String;

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lasx;->b:I

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lasx;->b:I

    .line 87
    sget-object v0, Lasx;->a:Ljava/lang/String;

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
