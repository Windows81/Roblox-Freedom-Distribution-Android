.class Lcom/roblox/client/login/a$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ab/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/a$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a$e;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/a$e;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/roblox/client/login/a$e$1;->a:Lcom/roblox/client/login/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/roblox/client/login/a$e$1;->a:Lcom/roblox/client/login/a$e;

    iget-object p1, p1, Lcom/roblox/client/login/a$e;->a:Lcom/roblox/client/login/a;

    const-string v0, "UserSelectedTheme"

    invoke-virtual {p1, v0}, Lcom/roblox/client/login/a;->a(Ljava/lang/String;)V

    return-void
.end method
