.class public abstract Lcom/roblox/client/purchase/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/16 v1, 0x3e8

    const/16 v0, 0x320

    const/4 v2, 0x0

    .line 42
    .line 43
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 99
    :goto_1
    :pswitch_0
    return v0

    .line 43
    :sswitch_0
    const-string v4, "com.roblox.client.robux40"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "com.roblox.client.robux80"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "com.roblox.client.robux400"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "com.roblox.client.robux800"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "com.roblox.client.robux800promo"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "com.roblox.client.robux2000"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "com.roblox.client.robux4500"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "com.roblox.client.robux10000"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "com.roblox.client.robux22500"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "com.roblox.client.robux90bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "com.roblox.client.robux450bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "com.roblox.client.robux1000bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_c
    const-string v4, "com.roblox.client.robux1000promobc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "com.roblox.client.robux2750bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "com.roblox.client.robux6000bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "com.roblox.client.robux15000bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "com.roblox.client.robux35000bc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_0

    .line 46
    :pswitch_1
    const/16 v0, 0x28

    .line 47
    goto/16 :goto_1

    .line 50
    :pswitch_2
    const/16 v0, 0x50

    .line 51
    goto/16 :goto_1

    .line 53
    :pswitch_3
    const/16 v0, 0x190

    .line 54
    goto/16 :goto_1

    .line 62
    :pswitch_4
    const/16 v0, 0x7d0

    .line 63
    goto/16 :goto_1

    .line 65
    :pswitch_5
    const/16 v0, 0x1194

    .line 66
    goto/16 :goto_1

    .line 68
    :pswitch_6
    const/16 v0, 0x2710

    .line 69
    goto/16 :goto_1

    .line 71
    :pswitch_7
    const/16 v0, 0x57e4

    .line 72
    goto/16 :goto_1

    .line 75
    :pswitch_8
    const/16 v0, 0x5a

    .line 76
    goto/16 :goto_1

    .line 78
    :pswitch_9
    const/16 v0, 0x1c2

    .line 79
    goto/16 :goto_1

    :pswitch_a
    move v0, v1

    .line 82
    goto/16 :goto_1

    :pswitch_b
    move v0, v1

    .line 85
    goto/16 :goto_1

    .line 87
    :pswitch_c
    const/16 v0, 0xabe

    .line 88
    goto/16 :goto_1

    .line 90
    :pswitch_d
    const/16 v0, 0x1770

    .line 91
    goto/16 :goto_1

    .line 93
    :pswitch_e
    const/16 v0, 0x3a98

    .line 94
    goto/16 :goto_1

    .line 96
    :pswitch_f
    const v0, 0x88b8

    goto/16 :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8fa285 -> :sswitch_c
        -0x77640a8a -> :sswitch_b
        -0x754a4789 -> :sswitch_d
        -0x6edbcf6f -> :sswitch_e
        -0x6c95c709 -> :sswitch_f
        -0x53d5f513 -> :sswitch_4
        -0x4946b9ee -> :sswitch_0
        -0x4946b972 -> :sswitch_1
        -0x3da863a5 -> :sswitch_7
        -0x3d9950a1 -> :sswitch_8
        -0x3d7bd106 -> :sswitch_a
        -0x1280d92c -> :sswitch_5
        -0x127fdda9 -> :sswitch_6
        -0x127da452 -> :sswitch_9
        -0x2c95087 -> :sswitch_10
        0x206f7c5e -> :sswitch_2
        0x206f8b62 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method
