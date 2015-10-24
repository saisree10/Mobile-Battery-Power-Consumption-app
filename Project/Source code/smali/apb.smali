.class public Lapb;
.super Ljava/lang/Object;
.source "SettingsControl.java"


# direct methods
.method public static a(Landroid/content/Context;Lahp;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1}, Lahp;->g()I

    move-result v1

    .line 151
    const/16 v2, 0x32

    if-ne v1, v2, :cond_2

    .line 152
    const/4 v0, 0x5

    .line 168
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lapf;->a(Landroid/content/Context;I)V

    .line 169
    invoke-virtual {p1, v0}, Lahp;->a(I)V

    .line 170
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 171
    check-cast p0, Landroid/app/Activity;

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lahl;->a(Landroid/view/Window;I)V

    .line 184
    :goto_1
    return v0

    .line 154
    :cond_2
    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 155
    sget-boolean v1, Lazw;->d:Z

    if-eqz v1, :cond_0

    .line 156
    sget v0, Lahl;->b:I

    goto :goto_0

    .line 161
    :cond_3
    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    .line 165
    const/4 v0, 0x4

    goto :goto_0

    .line 178
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/settings/BrightnessChangeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const-string v2, "brightness_index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lapc;

    invoke-direct {v1, p1, p2, p0}, Lapc;-><init>(IZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;Lapi;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p1}, Lapi;->b()I

    move-result v0

    .line 189
    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 196
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-static {p0, v2, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 200
    invoke-virtual {p1, v1}, Lapi;->a(I)V

    goto :goto_0

    .line 203
    :pswitch_3
    invoke-static {p0, v2, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 204
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1}, Lahp;->a()Z

    move-result v3

    .line 26
    if-nez v3, :cond_1

    move v0, v1

    .line 27
    :goto_0
    instance-of v4, p1, Lahd;

    if-eqz v4, :cond_5

    .line 28
    invoke-static {}, Lazf;->n()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-static {p0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v4

    invoke-virtual {v4}, Lbag;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    invoke-static {p0, v0, v3}, Lapb;->a(Landroid/content/Context;IZ)V

    .line 38
    :goto_1
    if-nez v3, :cond_4

    .line 53
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 26
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p0, v0, v3}, Lapb;->b(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 36
    :cond_3
    invoke-static {p0}, Lapb;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 38
    goto :goto_2

    .line 41
    :cond_5
    if-eqz v3, :cond_7

    .line 42
    if-eqz p2, :cond_6

    .line 43
    invoke-static {p0, v2, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 45
    :cond_6
    invoke-virtual {p1, v2}, Lahp;->a(I)V

    .line 53
    :goto_3
    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_2

    .line 48
    :cond_7
    if-eqz p2, :cond_8

    .line 49
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 51
    :cond_8
    invoke-virtual {p1, v1}, Lahp;->a(I)V

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    .line 87
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0288

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 88
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 89
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    new-instance v2, Lapd;

    invoke-direct {v2, p0, p1, p2}, Lapd;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 95
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    new-instance v2, Lape;

    invoke-direct {v2, p0, v0}, Lape;-><init>(Landroid/content/Context;Lauu;)V

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v0}, Lauu;->show()V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    const-string v1, "widget_airplane_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "widget_airplane_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lahp;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1}, Lahp;->f()I

    move-result v3

    .line 234
    if-ne v3, v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lapf;->b(Landroid/content/Context;I)V

    .line 245
    invoke-virtual {p1, v0}, Lahp;->a(I)V

    .line 246
    return-void

    .line 236
    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    if-ne v3, v1, :cond_0

    move v0, v2

    .line 239
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lapi;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p1}, Lapi;->b()I

    move-result v0

    .line 211
    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-static {p0, v2, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 214
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-static {p0, v2, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 218
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 222
    invoke-virtual {p1, v1}, Lapi;->a(I)V

    goto :goto_0

    .line 225
    :pswitch_3
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lapi;->a(I)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lahp;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-virtual {p1}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lahp;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1}, Lahp;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p1}, Lahp;->a()Z

    move-result v2

    .line 127
    if-eqz v2, :cond_1

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {p0, v0, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 130
    :cond_0
    invoke-virtual {p1, v0}, Lahp;->a(I)V

    .line 144
    :goto_0
    return v0

    .line 134
    :cond_1
    if-eqz p2, :cond_2

    .line 135
    invoke-static {p0, v1, p2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 136
    :cond_2
    invoke-virtual {p1, v1}, Lahp;->a(I)V

    move v0, v1

    .line 137
    goto :goto_0

    .line 141
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    const/4 v0, -0x1

    goto :goto_0
.end method
