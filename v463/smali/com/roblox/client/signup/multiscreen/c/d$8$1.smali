.class Lcom/roblox/client/signup/multiscreen/c/d$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/d$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/d$8;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/d$8;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d$8$1;->a:Lcom/roblox/client/signup/multiscreen/c/d$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d$8$1;->a:Lcom/roblox/client/signup/multiscreen/c/d$8;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/c/d$8;->c:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/d;->n(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/components/RbxProgressButton;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/d$8$1;->a:Lcom/roblox/client/signup/multiscreen/c/d$8;

    iget-object v2, v2, Lcom/roblox/client/signup/multiscreen/c/d$8;->b:Landroid/content/Context;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_RegisteringWord:I

    const-string v4, "Authentication_SignUp_Response_RegisteringWord"

    invoke-static {v2, v4, v3}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d$8$1;->a:Lcom/roblox/client/signup/multiscreen/c/d$8;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/c/d$8;->c:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/d;->c(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/signup/multiscreen/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/d;->h()V

    return-void
.end method
