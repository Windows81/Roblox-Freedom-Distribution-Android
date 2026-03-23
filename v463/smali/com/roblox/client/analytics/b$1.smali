.class Lcom/roblox/client/analytics/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/analytics/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/analytics/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/analytics/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/analytics/b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/roblox/client/analytics/b$1;->a:Lcom/roblox/client/analytics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CrashReporter"

    const-string v1, "reportCrashIfAny: Done"

    .line 73
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/roblox/client/analytics/b$1;->a:Lcom/roblox/client/analytics/b;

    sget-object v1, Lcom/roblox/client/analytics/b$a;->c:Lcom/roblox/client/analytics/b$a;

    invoke-static {v0, v1}, Lcom/roblox/client/analytics/b;->a(Lcom/roblox/client/analytics/b;Lcom/roblox/client/analytics/b$a;)Lcom/roblox/client/analytics/b$a;

    return-void
.end method
