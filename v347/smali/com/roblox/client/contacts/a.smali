.class public Lcom/roblox/client/contacts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/net/Uri;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/roblox/client/contacts/a;->a:Landroid/net/Uri;

    .line 22
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "photo_thumb_uri"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/contacts/a;->b:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/name"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/contacts/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "Phone"

    .line 106
    sparse-switch p0, :sswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 108
    :sswitch_0
    const-string v0, "Home"

    goto :goto_0

    .line 111
    :sswitch_1
    const-string v0, "Mobile"

    goto :goto_0

    .line 115
    :sswitch_2
    const-string v0, "Work"

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
