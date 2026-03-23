.class Lcom/roblox/client/t/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/t/c;->a(Landroidx/lifecycle/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;

.field final synthetic b:Lcom/roblox/client/t/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/t/c;Landroidx/fragment/app/c;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/roblox/client/t/c$1;->b:Lcom/roblox/client/t/c;

    iput-object p2, p0, Lcom/roblox/client/t/c$1;->a:Landroidx/fragment/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/roblox/client/t/c$1;->b:Lcom/roblox/client/t/c;

    iget-object v1, p0, Lcom/roblox/client/t/c$1;->a:Landroidx/fragment/app/c;

    invoke-static {v0, v1}, Lcom/roblox/client/t/c;->a(Lcom/roblox/client/t/c;Landroid/app/Activity;)V

    return-void
.end method
