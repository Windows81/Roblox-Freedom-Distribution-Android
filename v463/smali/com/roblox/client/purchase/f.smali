.class public abstract Lcom/roblox/client/purchase/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 8

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.roblox.robloxmobile.robloxpremium2200onemonth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.roblox.robloxmobile.premium880subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "com.roblox.robloxmobile.robloxpremium450onemonth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.roblox.robloxmobile.robloxpremium1000onemonth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "com.roblox.robloxmobile.premium80robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "com.roblox.client.robux800"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "com.roblox.client.robux400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "com.roblox.robloxmobile.premium160robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "com.roblox.robloxmobile.premium240robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "com.roblox.robloxmobile.premium320robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "com.roblox.robloxmobile.premium400robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "com.roblox.client.robux35000bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "com.roblox.robloxmobile.robloxpremium2200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "com.roblox.robloxmobile.robloxpremium1000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "com.roblox.robloxmobile.robloxpremium450"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "com.roblox.client.robux90bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "com.roblox.client.robux4500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "com.roblox.client.robux2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "com.roblox.robloxmobile.premium4950subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "com.roblox.client.robux450bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "com.roblox.client.robux22500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "com.roblox.client.robux10000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "com.roblox.client.robux80"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "com.roblox.client.robux40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "com.roblox.robloxmobile.premium175subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "com.roblox.robloxmobile.premium800robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "com.roblox.client.robux800promo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "com.roblox.robloxmobile.premium4500robux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "com.roblox.robloxmobile.premium265subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto :goto_1

    :sswitch_1d
    const-string v0, "com.roblox.robloxmobile.premium350subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    goto :goto_1

    :sswitch_1e
    const-string v0, "com.roblox.client.robux15000bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_1

    :sswitch_1f
    const-string v0, "com.roblox.client.robux6000bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_20
    const-string v0, "com.roblox.robloxmobile.premium88subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto :goto_1

    :sswitch_21
    const-string v0, "com.roblox.client.robux2750bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_22
    const-string v0, "com.roblox.client.robux1000bc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_23
    const-string v0, "com.roblox.robloxmobile.premium440subscribed2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x22

    goto :goto_1

    :sswitch_24
    const-string v0, "com.roblox.client.robux1000promobc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const/16 v0, 0x898

    const/16 v2, 0x1194

    const/16 v3, 0x190

    const/16 v4, 0x50

    const/16 v5, 0x1c2

    const/16 v6, 0x320

    const/16 v7, 0x3e8

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0x1356

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x370

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x1b8

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x15e

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x109

    goto :goto_2

    :pswitch_5
    const/16 v1, 0xaf

    goto :goto_2

    :pswitch_6
    const/16 v1, 0x58

    goto :goto_2

    :pswitch_7
    const/16 v1, 0x140

    goto :goto_2

    :pswitch_8
    const/16 v1, 0xf0

    goto :goto_2

    :pswitch_9
    const/16 v1, 0xa0

    goto :goto_2

    :pswitch_a
    const/16 v1, 0x898

    goto :goto_2

    :pswitch_b
    const v1, 0x88b8

    goto :goto_2

    :pswitch_c
    const/16 v1, 0x3a98

    goto :goto_2

    :pswitch_d
    const/16 v1, 0x1770

    goto :goto_2

    :pswitch_e
    const/16 v1, 0xabe

    goto :goto_2

    :pswitch_f
    const/16 v1, 0x3e8

    goto :goto_2

    :pswitch_10
    const/16 v1, 0x1c2

    goto :goto_2

    :pswitch_11
    const/16 v1, 0x5a

    goto :goto_2

    :pswitch_12
    const/16 v1, 0x57e4

    goto :goto_2

    :pswitch_13
    const/16 v1, 0x2710

    goto :goto_2

    :pswitch_14
    const/16 v1, 0x1194

    goto :goto_2

    :pswitch_15
    const/16 v1, 0x7d0

    goto :goto_2

    :pswitch_16
    const/16 v1, 0x320

    goto :goto_2

    :pswitch_17
    const/16 v1, 0x190

    goto :goto_2

    :pswitch_18
    const/16 v1, 0x50

    goto :goto_2

    :pswitch_19
    const/16 v1, 0x28

    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e8fa285 -> :sswitch_24
        -0x7b12a84c -> :sswitch_23
        -0x77640a8a -> :sswitch_22
        -0x754a4789 -> :sswitch_21
        -0x745af95a -> :sswitch_20
        -0x6edbcf6f -> :sswitch_1f
        -0x6c95c709 -> :sswitch_1e
        -0x66a8b0e4 -> :sswitch_1d
        -0x65029441 -> :sswitch_1c
        -0x5b295445 -> :sswitch_1b
        -0x53d5f513 -> :sswitch_1a
        -0x4f8490c4 -> :sswitch_19
        -0x4bd3f563 -> :sswitch_18
        -0x4946b9ee -> :sswitch_17
        -0x4946b972 -> :sswitch_16
        -0x3da863a5 -> :sswitch_15
        -0x3d9950a1 -> :sswitch_14
        -0x3d7bd106 -> :sswitch_13
        -0x3c0bbb7a -> :sswitch_12
        -0x1280d92c -> :sswitch_11
        -0x127fdda9 -> :sswitch_10
        -0x127da452 -> :sswitch_f
        -0x10eb9fcd -> :sswitch_e
        -0xc89c985 -> :sswitch_d
        -0xc894da4 -> :sswitch_c
        -0x2c95087 -> :sswitch_b
        0x10f6bbc0 -> :sswitch_a
        0x12e20563 -> :sswitch_9
        0x14cd4f06 -> :sswitch_8
        0x16b898a9 -> :sswitch_7
        0x206f7c5e -> :sswitch_6
        0x206f8b62 -> :sswitch_5
        0x2a5a2c64 -> :sswitch_4
        0x41df0f55 -> :sswitch_3
        0x4674010d -> :sswitch_2
        0x58fb5fbe -> :sswitch_1
        0x735a1a36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_f
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_a
        :pswitch_18
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_17
        :pswitch_16
        :pswitch_14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method
