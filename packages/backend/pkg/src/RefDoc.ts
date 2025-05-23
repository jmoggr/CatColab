// This file was generated by [ts-rs](https://github.com/Aleph-Alpha/ts-rs). Do not edit this file manually.
import type { JsonValue } from "./serde_json/JsonValue";
import type { Permissions } from "./Permissions";

/**
 * Document identified by a ref.
 */
export type RefDoc = { "tag": "Readonly", content: JsonValue, permissions: Permissions, } | { "tag": "Live", docId: string, permissions: Permissions, };
