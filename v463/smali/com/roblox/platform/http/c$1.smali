.class Lcom/roblox/platform/http/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/platform/http/c;->a()Lc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/platform/http/c;


# direct methods
.method constructor <init>(Lcom/roblox/platform/http/c;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/roblox/platform/http/c$1;->a:Lcom/roblox/platform/http/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rbx.http"

    .line 44
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/e$b;->a(Ljava/lang/String;)I

    return-void
.end method
