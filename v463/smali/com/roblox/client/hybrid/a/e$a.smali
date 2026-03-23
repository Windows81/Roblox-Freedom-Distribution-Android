.class Lcom/roblox/client/hybrid/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a/e;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/e$a;->a:Lcom/roblox/client/hybrid/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 1

    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/hybrid/a/e$a;->a(Lcom/roblox/a/a;Lorg/greenrobot/eventbus/c;)V

    return-void
.end method

.method a(Lcom/roblox/a/a;Lorg/greenrobot/eventbus/c;)V
    .locals 5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RBHybridModuleLocalization LanguageChangeTrigger.execute() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.locale"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "newRobloxLanguageValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newRobloxLocaleValue "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v0}, Lcom/roblox/client/locale/f;->a(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Lcom/roblox/client/l/a;

    invoke-direct {v0, v1}, Lcom/roblox/client/l/a;-><init>(Lcom/roblox/client/locale/f;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received new roblox locale value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2, v3}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    const-string p2, "Received new roblox locale value is null."

    .line 56
    invoke-direct {p0, p2}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "Received new roblox locale value is empty."

    .line 58
    invoke-direct {p0, p2}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2, v3}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    :goto_2
    return-void
.end method
