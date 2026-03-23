.class public Lcom/roblox/client/contacts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/net/Uri;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 17
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/roblox/client/contacts/a;->a:Landroid/net/Uri;

    const-string v1, "contact_id"

    const-string v2, "mimetype"

    const-string v3, "display_name"

    const-string v4, "photo_thumb_uri"

    const-string v5, "data1"

    const-string v6, "data2"

    const-string v7, "data3"

    const-string v8, "data4"

    const-string v9, "data5"

    const-string v10, "data6"

    const-string v11, "data7"

    const-string v12, "data8"

    const-string v13, "data9"

    const-string v14, "data10"

    const-string v15, "data11"

    const-string v16, "data12"

    const-string v17, "data13"

    const-string v18, "data14"

    .line 22
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/contacts/a;->b:[Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    const-string v3, "vnd.android.cursor.item/name"

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    const-string v5, "1"

    const-string v6, ""

    const-string v7, "1"

    .line 64
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/contacts/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const-string p0, "Phone"

    goto :goto_0

    :cond_0
    const-string p0, "Work"

    goto :goto_0

    :cond_1
    const-string p0, "Mobile"

    goto :goto_0

    :cond_2
    const-string p0, "Home"

    :goto_0
    return-object p0
.end method
