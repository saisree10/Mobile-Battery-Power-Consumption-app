.class public Ltf;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;

.field private g:I

.field private final h:Ljava/util/Date;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "rp"

    iput-object v0, p0, Ltf;->i:Ljava/lang/String;

    .line 50
    const-string v0, "dt"

    iput-object v0, p0, Ltf;->j:Ljava/lang/String;

    .line 52
    const-string v0, "dp"

    iput-object v0, p0, Ltf;->k:Ljava/lang/String;

    .line 54
    const-string v0, "tag"

    iput-object v0, p0, Ltf;->l:Ljava/lang/String;

    .line 56
    const-string v0, "ov"

    iput-object v0, p0, Ltf;->m:Ljava/lang/String;

    .line 58
    const-string v0, "ev"

    iput-object v0, p0, Ltf;->n:Ljava/lang/String;

    .line 60
    const-string v0, "p"

    iput-object v0, p0, Ltf;->o:Ljava/lang/String;

    .line 62
    const-string v0, "t"

    iput-object v0, p0, Ltf;->p:Ljava/lang/String;

    .line 64
    const-string v0, "ot"

    iput-object v0, p0, Ltf;->q:Ljava/lang/String;

    .line 165
    iput p1, p0, Ltf;->a:I

    .line 166
    iput p2, p0, Ltf;->b:I

    .line 167
    iput p3, p0, Ltf;->c:I

    .line 168
    iput-object p4, p0, Ltf;->d:Ljava/lang/String;

    .line 169
    iput p5, p0, Ltf;->g:I

    .line 170
    iput-object p6, p0, Ltf;->e:Ljava/lang/Object;

    .line 171
    iput-object p7, p0, Ltf;->f:Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 177
    sget-object v2, Ltn;->a:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 179
    const/16 v3, 0xe

    sub-int v1, v2, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltf;->h:Ljava/util/Date;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Ltf;->r:I

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "rp"

    iput-object v0, p0, Ltf;->i:Ljava/lang/String;

    .line 50
    const-string v0, "dt"

    iput-object v0, p0, Ltf;->j:Ljava/lang/String;

    .line 52
    const-string v0, "dp"

    iput-object v0, p0, Ltf;->k:Ljava/lang/String;

    .line 54
    const-string v0, "tag"

    iput-object v0, p0, Ltf;->l:Ljava/lang/String;

    .line 56
    const-string v0, "ov"

    iput-object v0, p0, Ltf;->m:Ljava/lang/String;

    .line 58
    const-string v0, "ev"

    iput-object v0, p0, Ltf;->n:Ljava/lang/String;

    .line 60
    const-string v0, "p"

    iput-object v0, p0, Ltf;->o:Ljava/lang/String;

    .line 62
    const-string v0, "t"

    iput-object v0, p0, Ltf;->p:Ljava/lang/String;

    .line 64
    const-string v0, "ot"

    iput-object v0, p0, Ltf;->q:Ljava/lang/String;

    .line 83
    const-string v0, "rp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltf;->a:I

    .line 84
    const-string v0, "dt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltf;->b:I

    .line 85
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltf;->c:I

    .line 86
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltf;->d:Ljava/lang/String;

    .line 87
    const-string v0, "ev"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltf;->f:Ljava/lang/String;

    .line 88
    const-string v0, "p"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltf;->g:I

    .line 89
    new-instance v0, Ljava/util/Date;

    const-string v1, "t"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ltf;->h:Ljava/util/Date;

    .line 90
    const-string v0, "ov"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ot"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Ltf;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltf;->e:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Ltf;->r:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ltx;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Ltx;->a()I

    move-result v1

    invoke-virtual {p1}, Ltx;->b()I

    move-result v2

    invoke-virtual {p1}, Ltx;->c()I

    move-result v3

    invoke-virtual {p1}, Ltx;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltx;->e()I

    move-result v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Ltf;-><init>(IIILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    packed-switch p2, :pswitch_data_0

    move-object p1, v1

    .line 140
    :goto_0
    :pswitch_0
    return-object p1

    .line 101
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    .line 105
    :pswitch_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 110
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "stat.Event"

    const-string v3, "Failed to getOriginalValue!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object p1, v1

    .line 111
    goto :goto_0

    .line 113
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 116
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 119
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 122
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 125
    :pswitch_7
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 128
    :pswitch_8
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 131
    :pswitch_9
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 135
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {p0, v0}, Luc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1, p1}, Ltf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ltf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 305
    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v1, "ver"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "rp"

    iget v2, p0, Ltf;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v1, "dt"

    iget v2, p0, Ltf;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "dp"

    iget v2, p0, Ltf;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v1, "tag"

    iget-object v2, p0, Ltf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "ot"

    iget v2, p0, Ltf;->c:I

    iget-object v3, p0, Ltf;->e:Ljava/lang/Object;

    invoke-static {v2, v3}, Lsw;->a(ILjava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "ov"

    invoke-direct {p0}, Ltf;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "ev"

    iget-object v2, p0, Ltf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "p"

    iget v2, p0, Ltf;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "t"

    iget-object v2, p0, Ltf;->h:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput p1, p0, Ltf;->r:I

    .line 279
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Ltf;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput p1, p0, Ltf;->g:I

    .line 283
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Ltf;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Ltf;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Ltf;->g:I

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ltf;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ltf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/Date;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ltf;->h:Ljava/util/Date;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Ltf;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltf;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltf;->h:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltf;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
