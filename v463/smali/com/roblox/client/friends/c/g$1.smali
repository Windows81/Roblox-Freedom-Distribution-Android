.class Lcom/roblox/client/friends/c/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/roblox/client/friends/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/roblox/client/friends/c/g$1;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/friends/c/g;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$1;->b:Lcom/roblox/client/friends/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "Validating token."

    .line 53
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/roblox/client/friends/c/g$1;->b:Lcom/roblox/client/friends/c/g;

    invoke-static {v1}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Token invalid, do not validate."

    .line 55
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    sget-boolean v0, Lcom/roblox/client/friends/c/g$1;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/friends/c/g$1;->b:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$1;->b:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/datastructures/d;

    iget-object v1, v1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/roblox/client/friends/c/c;

    iget-object v2, p0, Lcom/roblox/client/friends/c/g$1;->b:Lcom/roblox/client/friends/c/g;

    invoke-static {v2}, Lcom/roblox/client/friends/c/g;->c(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/c;Lcom/roblox/client/friends/c/f;)V

    return-void
.end method
