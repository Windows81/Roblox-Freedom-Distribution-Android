.class public Lcom/roblox/client/util/a/d;
.super Lcom/roblox/client/util/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 20
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "SETTINGS_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getSettingsPrivacyPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
