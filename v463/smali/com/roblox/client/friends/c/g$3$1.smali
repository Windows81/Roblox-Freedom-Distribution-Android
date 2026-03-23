.class Lcom/roblox/client/friends/c/g$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/g$3;->b(Lcom/roblox/client/friends/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/c/g$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/roblox/client/friends/c/g$3$1;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/friends/c/g$3;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iput-object p2, p0, Lcom/roblox/client/friends/c/g$3$1;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    sget-boolean v0, Lcom/roblox/client/friends/c/g$3$1;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/d;

    iget-object v0, v0, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/roblox/client/friends/c/c;

    .line 90
    sget-boolean v1, Lcom/roblox/client/friends/c/g$3$1;->a:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iget-object v1, v1, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v1}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/roblox/client/friends/c/g$3$1;->b:Lcom/roblox/client/friends/c/c;

    iget-object v1, v1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    iget-object v1, p0, Lcom/roblox/client/friends/c/g$3$1;->c:Lcom/roblox/client/friends/c/g$3;

    iget-object v1, v1, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/roblox/client/friends/c/g$3$1;->b:Lcom/roblox/client/friends/c/c;

    invoke-static {v1, v2, v3}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;Lcom/roblox/client/datastructures/d;)V

    :cond_5
    return-void
.end method
