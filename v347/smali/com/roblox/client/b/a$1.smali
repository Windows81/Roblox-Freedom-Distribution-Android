.class Lcom/roblox/client/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/b/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/b/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/b/a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/roblox/client/b/a$1;->a:Lcom/roblox/client/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "CrashReporter"

    const-string v1, "reportCrashIfAny: Done"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/roblox/client/b/a$1;->a:Lcom/roblox/client/b/a;

    sget-object v1, Lcom/roblox/client/b/a$a;->c:Lcom/roblox/client/b/a$a;

    invoke-static {v0, v1}, Lcom/roblox/client/b/a;->a(Lcom/roblox/client/b/a;Lcom/roblox/client/b/a$a;)Lcom/roblox/client/b/a$a;

    .line 71
    return-void
.end method
