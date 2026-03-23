.class Lcom/roblox/client/i/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/c;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/roblox/client/i/c$1;->a:Lcom/roblox/client/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/roblox/client/b;->aB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/roblox/client/b;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
