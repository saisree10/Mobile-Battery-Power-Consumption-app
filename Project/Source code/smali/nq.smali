.class public abstract Lnq;
.super Ljava/lang/Object;
.source "BaseDataPuller.java"

# interfaces
.implements Lny;


# static fields
.field protected static a:Z


# instance fields
.field protected b:Landroid/content/Context;

.field private c:Ljava/util/Map;

.field private d:Lbc;

.field private e:Loq;

.field private f:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lnq;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Loq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnq;->f:Ljava/util/HashSet;

    .line 47
    iput-object p1, p0, Lnq;->b:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnq;->c:Ljava/util/Map;

    .line 49
    invoke-static {p1}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    iput-object v0, p0, Lnq;->d:Lbc;

    .line 50
    iput-object p2, p0, Lnq;->e:Loq;

    .line 51
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    const-string v0, ""

    .line 342
    :try_start_0
    iget-object v1, p0, Lnq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    const-string v1, "BaseDataPuller"

    const-string v2, "Get android id failed."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Loq;)Lnq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    new-instance v0, Lno;

    invoke-direct {v0, p0, p1}, Lno;-><init>(Landroid/content/Context;Loq;)V

    return-object v0
.end method

.method static synthetic a(Lnq;)Loq;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lnq;->e:Loq;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    .line 196
    new-instance v1, Lnr;

    invoke-direct {v1, p0, p1, p2}, Lnr;-><init>(Lnq;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method private b(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 176
    invoke-static {}, Lpa;->c()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-nez p1, :cond_0

    .line 184
    iget-object v2, p0, Lnq;->b:Landroid/content/Context;

    invoke-static {v2}, Loa;->a(Landroid/content/Context;)I

    move-result v2

    .line 185
    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    .line 264
    :try_start_0
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    const-string v2, "st"

    invoke-static {v0, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 269
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 274
    :goto_1
    :try_start_2
    const-string v3, "BaseDataPuller"

    const-string v4, "download icon Failed: "

    invoke-static {v3, v4, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    const-string v3, "oe"

    invoke-static {v0, v3}, Lob;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :goto_2
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 286
    :goto_3
    return-object v0

    .line 272
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 283
    invoke-static {v0}, Lpi;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_3

    .line 279
    :cond_1
    :try_start_4
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    const-string v3, "nn"

    invoke-static {v0, v3}, Lob;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 283
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 273
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.toolbox.ACTION_ICON_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "icon_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lnq;->d:Lbc;

    invoke-virtual {v1, v0}, Lbc;->a(Landroid/content/Intent;)Z

    .line 302
    return-void
.end method

.method protected a(Ljava/lang/String;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.toolbox.ACTION_PULL_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "net_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v1, "is_updated"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lnq;->d:Lbc;

    invoke-virtual {v1, v0}, Lbc;->a(Landroid/content/Intent;)Z

    .line 295
    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lom;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lnq;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected abstract a(Lod;)V
.end method

.method protected a(Loe;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x193

    const/4 v7, 0x0

    .line 126
    iget-object v1, p1, Loe;->a:Ljava/lang/String;

    .line 127
    iget v0, p1, Loe;->c:I

    .line 128
    iget-object v2, p1, Loe;->d:Lod;

    invoke-virtual {v2}, Lod;->b()Z

    move-result v2

    .line 129
    iget-object v3, p1, Loe;->d:Lod;

    invoke-virtual {v3}, Lod;->c()I

    move-result v3

    .line 130
    iget-object v4, p1, Loe;->b:Ljava/util/List;

    .line 132
    if-eq v0, v8, :cond_0

    .line 133
    invoke-virtual {p0, v1, v0, v7}, Lnq;->a(Ljava/lang/String;IZ)V

    .line 134
    const-string v0, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pull completed, Network issue! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v1, v7}, Lnq;->a(Ljava/lang/String;Z)V

    .line 172
    :goto_0
    return-void

    .line 139
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    :cond_1
    invoke-virtual {p0, v1, v0, v7}, Lnq;->a(Ljava/lang/String;IZ)V

    .line 141
    const-string v0, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pull completed, Empty list issue! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v1, v7}, Lnq;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 147
    const-string v5, "empty"

    iget-object v6, v0, Lou;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "http://www.dianxinos.com"

    iget-object v6, v0, Lou;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "http://www.dianxinos.com"

    iget-object v0, v0, Lou;->n:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    :cond_3
    const-string v0, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pull completed, COMMAND received! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0, v1}, Loq;->e(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v1, v8, v9}, Lnq;->a(Ljava/lang/String;IZ)V

    .line 154
    invoke-virtual {p0, v1, v7}, Lnq;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0, v1, v4}, Loq;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    const-string v0, "BaseDataPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pull completed, New data received! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0, v1, v9}, Loq;->a(Ljava/lang/String;Z)V

    .line 161
    invoke-virtual {p0, v1, v8, v9}, Lnq;->a(Ljava/lang/String;IZ)V

    .line 167
    :goto_1
    invoke-direct {p0, v2}, Lnq;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    invoke-direct {p0, v1, v3}, Lnq;->b(Ljava/lang/String;I)V

    .line 171
    :cond_5
    invoke-virtual {p0, v1, v7}, Lnq;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 163
    :cond_6
    const-string v0, "BaseDataPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pull completed, No new data! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v1, v8, v7}, Lnq;->a(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method protected a(Lou;)V
    .locals 4
    .parameter

    .prologue
    .line 313
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    const-string v1, "DXANDROIDID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lnq;->a()Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p1, Lou;->m:Ljava/lang/String;

    const-string v2, "DXANDROIDID"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 316
    iput-object v0, p1, Lou;->m:Ljava/lang/String;

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v0, "appflood"

    iget-object v1, p1, Lou;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-direct {p0}, Lnq;->a()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "aid"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iput-object v0, p1, Lou;->m:Ljava/lang/String;

    goto :goto_0

    .line 328
    :cond_2
    const-string v0, "efun"

    iget-object v1, p1, Lou;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lnq;->a()Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uinfo"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    iput-object v0, p1, Lou;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 60
    const-string v0, "BaseDataPuller"

    const-string v1, "Start pull all tags!"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0}, Loq;->b()Ljava/util/Set;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    new-instance v2, Lod;

    invoke-direct {v2, v0}, Lod;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, p1}, Lod;->b(Z)V

    .line 65
    invoke-virtual {p0, v2}, Lnq;->b(Lod;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lnq;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lnq;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lnq;->b(Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method public b(Lod;)V
    .locals 4
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    invoke-static {v0}, Loa;->a(Landroid/content/Context;)I

    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    const-string v1, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not active network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lnq;->b:Landroid/content/Context;

    iget-object v1, p1, Lod;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lom;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 80
    invoke-virtual {p1}, Lod;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 85
    const-string v0, "BaseDataPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lod;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than 6 hours; drop this request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p1, Lod;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "BaseDataPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already pulling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lod;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; drop this request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "BaseDataPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start pull tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lod;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p1, Lod;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnq;->a(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {p0, p1}, Lnq;->a(Lod;)V

    goto/16 :goto_0
.end method

.method c(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lnq;->f:Ljava/util/HashSet;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lnq;->f:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    monitor-exit v1

    .line 258
    :goto_0
    return v0

    .line 236
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "BaseDataPuller"

    const-string v2, "Empty url, skip download"

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 244
    :cond_1
    iget-object v1, p0, Lnq;->e:Loq;

    invoke-virtual {v1, p1}, Loq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    invoke-direct {p0, p1}, Lnq;->e(Ljava/lang/String;)[B

    move-result-object v1

    .line 246
    if-eqz v1, :cond_3

    .line 247
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0, p1, v1}, Loq;->a(Ljava/lang/String;[B)V

    .line 248
    const-string v0, "BaseDataPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pull ICON OK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x1

    .line 255
    :cond_2
    :goto_1
    iget-object v1, p0, Lnq;->f:Ljava/util/HashSet;

    monitor-enter v1

    .line 256
    :try_start_2
    iget-object v2, p0, Lnq;->f:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 251
    :cond_3
    const-string v1, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull ICON Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lnq;->e:Loq;

    invoke-virtual {v0, p1}, Loq;->d(Ljava/lang/String;)Lot;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    const/16 v0, 0x12

    .line 309
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lot;->c:I

    goto :goto_0
.end method
