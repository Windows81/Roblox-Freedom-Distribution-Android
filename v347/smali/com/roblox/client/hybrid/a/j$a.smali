.class Lcom/roblox/client/hybrid/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/j;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/j;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/j$a;->a:Lcom/roblox/client/hybrid/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/j;Lcom/roblox/client/hybrid/a/j$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/j$a;-><init>(Lcom/roblox/client/hybrid/a/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    .line 93
    const v1, 0x7f0e00ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 95
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 9

    .prologue
    const/16 v4, 0x3f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "link"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v2

    const-string v3, "Android-AppMain-GameShare-ChooserShown"

    invoke-virtual {v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 51
    invoke-static {v1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/roblox/a/a;->e()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e018a

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Lcom/roblox/a/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/roblox/client/util/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    const-string v0, "android.intent.action.PICK_ACTIVITY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1}, Lcom/roblox/a/a;->e()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x2777

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    invoke-virtual {p1, v8, v7}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 88
    :goto_1
    return-void

    .line 54
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/a/a;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0199

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/hybrid/a/j$a;->a(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {p1, v6, v7}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/roblox/a/a;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e019a

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/hybrid/a/j$a;->a(Landroid/content/Context;I)V

    .line 86
    invoke-virtual {p1, v6, v7}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_1
.end method
