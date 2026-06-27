class Solution:
    def isValid(self, s: str) -> bool:
        closing = {
            "]": "[",
            "}": "{",
            ")": "("
        }
        stack = []

        for ch in s:
            if ch in closing:
                if stack and stack[-1] == closing[ch]:
                    stack.pop()
                else:
                    return False
            else:
                stack.append(ch)

        return True if not stack else False
