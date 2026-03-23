.class Lcom/roblox/client/startup/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/d$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/d$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/d$a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/roblox/client/startup/d$a$1;->a:Lcom/roblox/client/startup/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/http/j;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/startup/d$a$1;->a:Lcom/roblox/client/startup/d$a;

    iget-object v0, v0, Lcom/roblox/client/startup/d$a;->a:Lcom/roblox/client/startup/d;

    invoke-static {v0, p1}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/startup/d;Z)Z

    .line 79
    iget-object v0, p0, Lcom/roblox/client/startup/d$a$1;->a:Lcom/roblox/client/startup/d$a;

    iget-object v0, v0, Lcom/roblox/client/startup/d$a;->a:Lcom/roblox/client/startup/d;

    const-string v1, "AppSettings"

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/d;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
