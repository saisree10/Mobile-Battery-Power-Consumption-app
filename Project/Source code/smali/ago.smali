.class public Lago;
.super Ljava/lang/Object;
.source "CloudRemainedTimeState.java"

# interfaces
.implements Ladc;


# static fields
.field private static volatile a:Lago;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lagl;

.field private d:Lagm;

.field private e:Lb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lago;->b:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lago;->b:Landroid/content/Context;

    invoke-static {v0}, Lagl;->a(Landroid/content/Context;)Lagl;

    move-result-object v0

    iput-object v0, p0, Lago;->c:Lagl;

    .line 42
    iget-object v0, p0, Lago;->b:Landroid/content/Context;

    invoke-static {v0}, Lagm;->a(Landroid/content/Context;)Lagm;

    move-result-object v0

    iput-object v0, p0, Lago;->d:Lagm;

    .line 43
    iput-object p2, p0, Lago;->e:Lb;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lago;
    .locals 2
    .parameter

    .prologue
    .line 105
    new-instance v0, Lago;

    new-instance v1, Lc;

    invoke-direct {v1}, Lc;-><init>()V

    invoke-direct {v0, p0, v1}, Lago;-><init>(Landroid/content/Context;Lb;)V

    sput-object v0, Lago;->a:Lago;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-object v0, p0, Lago;->c:Lagl;

    invoke-virtual {v0}, Lagl;->a()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 290
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "period"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "total"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "period"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-le v0, v2, :cond_2

    move v0, v1

    .line 298
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method public a(Latr;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lago;->c:Lagl;

    invoke-virtual {v0}, Lagl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p1, Latr;->e:Lagi;

    invoke-virtual {v0}, Lagi;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lago;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lago;->c:Lagl;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lagl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
