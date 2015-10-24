.class public Lvn;
.super Ljava/lang/Object;
.source "FeedBackProviderHelperFactory.java"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lvn;->a:Landroid/content/UriMatcher;

    .line 34
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "topics"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "topics/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "replys"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "replys/*"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "hottopics"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "hottopics/*"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "atts"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "atts/#"

    const/16 v3, 0x2712

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "records"

    const v3, 0x186a1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    sget-object v1, Lvh;->a:Ljava/lang/String;

    const-string v2, "records/#"

    const v3, 0x186a2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lvo;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :sswitch_0
    new-instance v0, Lvs;

    invoke-direct {v0, v1}, Lvs;-><init>(Z)V

    .line 67
    :goto_0
    return-object v0

    .line 51
    :sswitch_1
    new-instance v0, Lvs;

    invoke-direct {v0, v2}, Lvs;-><init>(Z)V

    goto :goto_0

    .line 53
    :sswitch_2
    new-instance v0, Lvr;

    invoke-direct {v0, v1}, Lvr;-><init>(Z)V

    goto :goto_0

    .line 55
    :sswitch_3
    new-instance v0, Lvr;

    invoke-direct {v0, v2}, Lvr;-><init>(Z)V

    goto :goto_0

    .line 57
    :sswitch_4
    new-instance v0, Lvp;

    invoke-direct {v0, v1}, Lvp;-><init>(Z)V

    goto :goto_0

    .line 59
    :sswitch_5
    new-instance v0, Lvp;

    invoke-direct {v0, v2}, Lvp;-><init>(Z)V

    goto :goto_0

    .line 61
    :sswitch_6
    new-instance v0, Lvm;

    invoke-direct {v0, v1}, Lvm;-><init>(Z)V

    goto :goto_0

    .line 63
    :sswitch_7
    new-instance v0, Lvm;

    invoke-direct {v0, v2}, Lvm;-><init>(Z)V

    goto :goto_0

    .line 65
    :sswitch_8
    new-instance v0, Lvq;

    invoke-direct {v0, v1}, Lvq;-><init>(Z)V

    goto :goto_0

    .line 67
    :sswitch_9
    new-instance v0, Lvq;

    invoke-direct {v0, v2}, Lvq;-><init>(Z)V

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x2711 -> :sswitch_6
        0x2712 -> :sswitch_7
        0x186a1 -> :sswitch_8
        0x186a2 -> :sswitch_9
    .end sparse-switch
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 74
    sget-object v0, Lvn;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.google.topics"

    .line 94
    :goto_0
    return-object v0

    .line 78
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.google.topic"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.replys"

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.google.replys"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.google.hottopics"

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.google.hottopic"

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.google.atts"

    goto :goto_0

    .line 90
    :sswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.google.att"

    goto :goto_0

    .line 92
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.google.record"

    goto :goto_0

    .line 94
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.google.record"

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x2711 -> :sswitch_6
        0x2712 -> :sswitch_7
        0x186a1 -> :sswitch_8
        0x186a2 -> :sswitch_9
    .end sparse-switch
.end method
