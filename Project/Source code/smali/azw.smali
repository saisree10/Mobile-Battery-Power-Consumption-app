.class public final Lazw;
.super Ljava/lang/Object;
.source "ModeCommandConfig.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z

.field public static final l:Z

.field public static final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 84
    const/4 v12, 0x1

    .line 85
    const/4 v11, 0x1

    .line 86
    const/4 v10, 0x1

    .line 87
    const/4 v9, 0x1

    .line 88
    const/4 v8, 0x1

    .line 89
    const/4 v7, 0x1

    .line 90
    const/4 v6, 0x1

    .line 91
    const/4 v5, 0x1

    .line 92
    const/4 v4, 0x1

    .line 93
    const/4 v3, 0x1

    .line 94
    const/4 v2, 0x1

    .line 95
    const/4 v13, 0x1

    .line 96
    const/4 v0, 0x1

    .line 99
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v14, "/system/etc/dianxinos/powermgr/hw_config.xml"

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    .line 101
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v14

    .line 102
    invoke-virtual {v14, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 105
    const-string v1, "autosync"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v12

    .line 106
    const-string v1, "bluetooth"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v11

    .line 107
    const-string v1, "brightness"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v10

    .line 108
    if-eqz v10, :cond_0

    const-string v1, "brightness_auto"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    .line 109
    :goto_0
    const-string v1, "cleanup"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v8

    .line 110
    const-string v1, "gps"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v7

    .line 111
    const-string v1, "haptic"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v6

    .line 112
    const-string v1, "mobile_data"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v5

    .line 113
    const-string v1, "radio"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v4

    .line 114
    const-string v1, "screen_timeout"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v3

    .line 115
    const-string v1, "vibrate"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v2

    .line 116
    const-string v1, "wifi"

    const/4 v15, 0x1

    invoke-static {v14, v1, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :try_start_1
    const-string v13, "only2g"

    const/4 v15, 0x1

    invoke-static {v14, v13, v15}, Lazw;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 122
    :goto_1
    sput-boolean v12, Lazw;->a:Z

    .line 123
    sput-boolean v11, Lazw;->b:Z

    .line 124
    sput-boolean v10, Lazw;->c:Z

    .line 125
    if-eqz v9, :cond_1

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v9

    invoke-static {v9}, Lazf;->g(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_2
    sput-boolean v9, Lazw;->d:Z

    .line 128
    sput-boolean v8, Lazw;->e:Z

    .line 129
    sput-boolean v7, Lazw;->f:Z

    .line 130
    sput-boolean v6, Lazw;->g:Z

    .line 131
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_3
    sput-boolean v5, Lazw;->h:Z

    .line 132
    sput-boolean v4, Lazw;->i:Z

    .line 133
    sput-boolean v3, Lazw;->j:Z

    .line 134
    sput-boolean v2, Lazw;->k:Z

    .line 135
    sput-boolean v1, Lazw;->l:Z

    .line 136
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_4
    sput-boolean v0, Lazw;->m:Z

    .line 137
    return-void

    .line 108
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    move-object/from16 v17, v1

    move v1, v13

    move-object/from16 v13, v17

    .line 119
    :goto_5
    const-string v14, "ModeCommandConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 131
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 136
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 118
    :catch_1
    move-exception v13

    goto :goto_5
.end method

.method private static a(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 143
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 144
    const-string v2, "value"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, v1

    .line 149
    :cond_0
    return p2
.end method
