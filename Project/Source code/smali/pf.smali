.class public Lpf;
.super Ljava/lang/Object;
.source "ToolboxStatsReport.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const-string v0, "coins_query"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "ToolboxStatsReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 36
    const-string v1, "toolbox_stats"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lsb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    .line 37
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const-string v0, "coins_query_user"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    const-string v0, "coins_query"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const-string v0, "coins_query_sc"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const-string v0, "more_coins"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const-string v0, "more_coins_valid"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    const-string v0, "show_no_net_tip"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    const-string v0, "click_no_net_tip"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    const-string v0, "close_no_net_tip"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    const-string v0, "show_open_net_dia"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    const-string v0, "click_open_net_dia"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    const-string v0, "show_no_net_dia"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const-string v0, "click_no_net_dia_setting"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    const-string v0, "close_recently"

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method
