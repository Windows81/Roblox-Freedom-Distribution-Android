.class final Lcom/appsflyer/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/x$a;,
        Lcom/appsflyer/x$b;
    }
.end annotation


# instance fields
.field private a:Lcom/appsflyer/x$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/appsflyer/x$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/x$1;-><init>(Lcom/appsflyer/x;)V

    iput-object v0, p0, Lcom/appsflyer/x;->a:Lcom/appsflyer/x$a;

    .line 61
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lcom/appsflyer/x$b;->values()[Lcom/appsflyer/x$b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 47
    invoke-static {v3}, Lcom/appsflyer/x$b;->a(Lcom/appsflyer/x$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/appsflyer/x;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-static {v3}, Lcom/appsflyer/x$b;->b(Lcom/appsflyer/x$b;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    return-object v0

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/appsflyer/x$b;->e:Lcom/appsflyer/x$b;

    invoke-static {v0}, Lcom/appsflyer/x$b;->b(Lcom/appsflyer/x$b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/x;->a:Lcom/appsflyer/x$a;

    invoke-interface {v1, p1}, Lcom/appsflyer/x$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/appsflyer/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v1

    goto :goto_0
.end method
