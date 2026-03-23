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

    .prologue
    .line 32
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/e$a;->a:Lcom/roblox/client/hybrid/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/hybrid/a/e$a;->a(Lcom/roblox/a/a;Lorg/greenrobot/eventbus/c;)V

    .line 37
    return-void
.end method

.method a(Lcom/roblox/a/a;Lorg/greenrobot/eventbus/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v0, "rbx.locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RBHybridModuleLocalization LanguageChangeTrigger.execute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "newRobloxLanguageValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const-string v1, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newRobloxLocaleValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v0}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Lcom/roblox/client/e/b;

    invoke-direct {v0, v1}, Lcom/roblox/client/e/b;-><init>(Lcom/roblox/client/locale/c;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 53
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v4}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 62
    :goto_1
    return-void

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received new roblox locale value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    if-nez v0, :cond_2

    .line 56
    const-string v0, "Received new roblox locale value is null."

    invoke-direct {p0, v0}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    .line 60
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "Received new roblox locale value is empty."

    invoke-direct {p0, v0}, Lcom/roblox/client/hybrid/a/e$a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method
