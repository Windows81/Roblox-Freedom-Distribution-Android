.class Lcom/roblox/client/signup/multiscreen/b/r$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/r$a;->b(Lcom/roblox/client/signup/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/f;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/r$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$2;->b:Lcom/roblox/client/signup/multiscreen/b/r$a;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$2;->a:Lcom/roblox/client/signup/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$2;->b:Lcom/roblox/client/signup/multiscreen/b/r$a;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a$2;->a:Lcom/roblox/client/signup/f;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r$a;->a(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;)V

    return-void
.end method
