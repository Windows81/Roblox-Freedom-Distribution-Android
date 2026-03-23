.class public Lcom/roblox/client/signup/multiscreen/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/auth/api/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/a/b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/a/b;->a()Lcom/google/android/gms/f/g;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/roblox/client/signup/multiscreen/e$1;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/signup/multiscreen/e$1;-><init>(Lcom/roblox/client/signup/multiscreen/e;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/e;)Lcom/google/android/gms/f/g;

    .line 28
    new-instance v0, Lcom/roblox/client/signup/multiscreen/e$2;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/signup/multiscreen/e$2;-><init>(Lcom/roblox/client/signup/multiscreen/e;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/d;)Lcom/google/android/gms/f/g;

    return-void
.end method
